# Tourism Website - TourOnline

A tourism website showcasing travel destinations in Sri Lanka with user authentication, favorites, and reviews.

## Project Structure

```text
WebAssignment/
├── api/                    # Backend PHP endpoints
│   ├── about.php          # Statistics API
│   ├── category.php       # Category data API
│   ├── contact.php        # Contact form handler
│   ├── content.php        # Place details & interactions
│   ├── home.php           # Homepage data API
│   ├── login.php          # Authentication API
│   ├── phpvariables.php   # Session management
│   └── search.php         # Search API
├── css/                   # Stylesheets
│   ├── common.css         # Common styles
│   └── navbar.css         # Navigation styles
├── js/                    # JavaScript files
│   ├── log.js             # Login/logout functionality
│   └── navbar.js          # Navigation effects
├── includes/              # Shared PHP includes
│   └── dbconn.php         # Database connection
├── img/                   # Images and icons
├── placeImg/              # Tourist destination images
├── devImg/                # Developer team photos
├── about.html             # About page
├── category.html          # Browse by category
├── contact.html           # Contact form
├── content.html           # Place details page
├── explore.html           # Sri Lanka map explorer
├── home.html              # Homepage
├── login.html             # Login/register page
└── search.html            # Search functionality
```

## Features

- **User Authentication**: Login and registration system
- **Browse Destinations**: Explore places by category, popularity, or recent additions
- **Interactive Map**: Click on Sri Lankan provinces to explore locations
- **Search**: Find destinations by name
- **User Interactions**: Like, favorite, and comment on places
- **Statistics Dashboard**: View site statistics (users, places, visits, reviews)

## Technologies Used

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Backend**: PHP
- **Database**: MySQL
- **AJAX**: XMLHttpRequest for async operations

## Setup Instructions

1. **Database Configuration**:
   - Import your database schema
   - Update database credentials in `includes/dbconn.php`

2. **Web Server**:
   - Requires PHP-enabled web server (Apache/Nginx)
   - Place files in web root directory
   - Ensure proper file permissions

3. **Access**:
   - Navigate to `home.html` in your browser
   - Default page loads homepage with featured destinations

## Security Notes

⚠️ **Important**: This project contains security vulnerabilities that should be addressed before production use:

1. **SQL Injection**: Use prepared statements instead of direct query concatenation
2. **Password Storage**: Implement password hashing (bcrypt/Argon2)
3. **XSS Protection**: Add output escaping and input sanitization
4. **CSRF Protection**: Implement CSRF tokens for forms
5. **Configuration**: Move database credentials to environment variables

## Database Tables

- `users` - User accounts
- `places` - Tourist destinations
- `placeimg` - Place images
- `category` - Place categories
- `comments` - User reviews
- `favplace` - User favorites
- `likeplace` - Place likes
- `visits` - Site visit tracking
- `contact` - Contact form submissions

## Pages Overview

- **home.html**: Homepage with favorite/liked/viewed/recent places
- **explore.html**: Interactive Sri Lanka map
- **category.html**: Browse places by category
- **search.html**: Search destinations
- **content.html**: Detailed place view with images and reviews
- **about.html**: Site statistics and information
- **contact.html**: Contact form
- **login.html**: User authentication

## Recent Improvements

- Organized files into logical folders (api/, css/, js/, includes/)
- Removed duplicate and unused files
- Consolidated navigation menus
- Improved project structure and maintainability

## Future Enhancements

- Implement prepared statements for SQL queries
- Add password hashing
- Implement responsive design improvements
- Add admin panel for content management
- Implement proper session security
- Add API rate limiting
- Implement caching mechanisms

## License

This project is for educational purposes.
