from app import create_app, db
from app.models.user import User
import os

app = create_app(os.getenv('FLASK_ENV', 'development'))

with app.test_request_context():
    with app.app_context():
        # Get first admin user
        admin = User.query.filter_by(role='system_admin').first()
        
        if admin:
            print(f"Found admin: {admin.username}, ID: {admin.id}")
            # Try to render the template
            from flask import render_template
            
            html = render_template('admin/users_system.html', 
                                 user=admin,
                                 all_users=[admin],
                                 role_counts={'system_admin': 1},
                                 total_users=1,
                                 active_users=1,
                                 verified_users=1)
            
            # Find the script section
            script_start = html.find('<script>')
            script_end = html.find('</script>', script_start)
            
            if script_start != -1 and script_end != -1:
                script_content = html[script_start:script_end + 10]
                print("\nScript section (first 800 chars):")
                print(script_content[:800])
                print("\n...")
                print("\nScript section (last 800 chars):")
                print(script_content[-800:])
                
                # Check for balancing
                braces = script_content.count('{') - script_content.count('}')
                parens = script_content.count('(') - script_content.count(')')
                brackets = script_content.count('[') - script_content.count(']')
                
                print(f"\n\nBalance check:")
                print(f"Braces: {braces} (should be 0)")
                print(f"Parens: {parens} (should be 0)")
                print(f"Brackets: {brackets} (should be 0)")
        else:
            print("No admin user found. Seed the database first.")
