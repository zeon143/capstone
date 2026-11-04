from app import create_app, db
from app.models.user import User
from flask import render_template
import os

app = create_app(os.getenv('FLASK_ENV', 'development'))

with app.test_request_context('/dashboard/admin/users-system'):
    with app.app_context():
        # Use a system admin user if present, else pick any user
        admin = User.query.filter_by(role='system_admin').first()
        if not admin:
            admin = User.query.first()
        all_users = [admin] if admin else []
        html = render_template('admin/users_system.html',
                               user=admin,
                               all_users=all_users,
                               role_counts={'system_admin': 1} if admin else {},
                               total_users=len(all_users),
                               active_users=len(all_users),
                               verified_users=len([u for u in all_users if getattr(u,'is_verified',False)]))

        # Find all <script>...</script> blocks without requiring BeautifulSoup
        scripts = []
        start = 0
        while True:
            i = html.find('<script', start)
            if i == -1:
                break
            j = html.find('>', i)
            if j == -1:
                break
            k = html.find('</script>', j)
            if k == -1:
                break
            content = html[j+1:k]
            scripts.append(content)
            start = k+9

        print(f'Found {len(scripts)} <script> blocks')
        for idx, content in enumerate(scripts, start=1):
            lines = content.splitlines()
            print('--- Script', idx, 'lines:', len(lines))
            # Check balances
            braces = content.count('{') - content.count('}')
            parens = content.count('(') - content.count(')')
            brackets = content.count('[') - content.count(']')
            backticks = content.count('`')
            single = content.count("'")
            double = content.count('"')
            print(f'Braces:{braces} Parens:{parens} Brackets:{brackets} Backticks:{backticks} Single:{single} Double:{double}')
            # Show last 8 lines
            tail = '\n'.join(lines[-8:])
            print('Last lines:\n', tail)

        # Also dump full HTML length
        print('HTML length (chars):', len(html))
        open('debug_render_output.html','w',encoding='utf-8').write(html)
        print('Wrote debug_render_output.html')
