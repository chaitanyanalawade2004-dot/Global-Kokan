# GlobalKokan — Tour & Travel Booking Platform

A full-stack web application for browsing and booking tours in the **Konkan region** of Maharashtra, India. Built with **CodeIgniter 3 (PHP MVC)** and a **MySQL** database.

---

## Features

**Frontend (Public)**
- Browse tour packages by category
- Tour detail pages with itinerary, photos, and pricing
- Photo gallery
- Customer reviews
- Contact form
- Terms & Conditions, About Us pages

**Admin Panel** (`/admin`)
- Secure login
- Manage tour categories, tours, itineraries, and photos
- Manage gallery images
- Manage and moderate customer reviews
- View and export booking reports
- Manage customized and group fixed packages

---

## Tech Stack

| Layer       | Technology              |
|-------------|-------------------------|
| Backend     | PHP 5.6+ / CodeIgniter 3 |
| Database    | MySQL (MySQLi driver)   |
| Frontend    | HTML5, CSS3, Bootstrap  |
| Server      | Apache (with mod_rewrite) |

---

## Project Structure

```
globalkokan/
├── application/
│   ├── config/           # App configuration (routes, database, autoload…)
│   ├── controllers/      # Public controllers (Home, Tour, Gallery, Contact…)
│   │   └── admin/        # Admin controllers (Tour, Gallery, Review, Booking…)
│   ├── models/
│   │   └── admin/        # All Eloquent-style models
│   └── views/            # PHP view templates
│       └── admin/        # Admin panel views
├── assets/
│   ├── css/              # Custom stylesheets
│   ├── js/               # Custom scripts
│   ├── images/           # Static images
│   ├── fonts/            # Web fonts
│   ├── admin/            # AdminLTE admin template (git-ignored, download separately)
│   └── upload/           # User-uploaded tour/gallery images (git-ignored)
├── globalkokan.sql        # Database schema + seed data
├── index.php              # CodeIgniter front controller
├── .htaccess              # URL rewriting rules
└── composer.json
```

> **Note:** The `/system` folder (CodeIgniter core) is excluded from this repository. Download it separately (see setup step 3).

---

## Local Setup

### Prerequisites
- PHP >= 5.6
- MySQL / MariaDB
- Apache with `mod_rewrite` enabled
- (Optional) Composer

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/your-username/globalkokan.git
cd globalkokan
```

**2. Import the database**
```bash
mysql -u root -p -e "CREATE DATABASE globalkokan;"
mysql -u root -p globalkokan < globalkokan.sql
```

**3. Add the CodeIgniter system folder**

Download [CodeIgniter 3.x](https://codeigniter.com/download) and copy the `/system` folder into the project root so your structure looks like:
```
globalkokan/
├── system/      ← paste here
├── application/
├── assets/
└── index.php
```

**4. Configure the database**
```bash
cp application/config/database.php.example application/config/database.php
```
Open `application/config/database.php` and fill in your credentials:
```php
'hostname' => 'localhost',
'username' => 'your_db_user',
'password' => 'your_db_password',
'database' => 'globalkokan',
```

**5. Configure the base URL**

Open `application/config/config.php` and set:
```php
$config['base_url'] = 'http://localhost/globalkokan/';
```

**6. Point Apache to the project root**

Either drop the folder into your `htdocs`/`www` directory, or configure a virtual host. Make sure `mod_rewrite` is enabled.

**7. Visit the app**

- Frontend: `http://localhost/globalkokan/`
- Admin panel: `http://localhost/globalkokan/admin`

---

## Database

The full schema and seed data are in **`globalkokan.sql`**. Key tables:

| Table                    | Purpose                            |
|--------------------------|------------------------------------|
| `tour_category`          | Tour categories                    |
| `tour`                   | Tour packages                      |
| `tour_itinerary`         | Day-by-day itinerary per tour      |
| `tour_photos`            | Photos linked to tours             |
| `gallery`                | Standalone gallery images          |
| `review`                 | Customer reviews                   |
| `booking_report`         | Booking submissions                |
| `customized_packages`    | Custom tour requests               |
| `group_fixed_packages`   | Fixed group tour packages          |
| `users`                  | Admin users                        |

---

## Admin Credentials

> Set these up by seeding the `users` table after importing `globalkokan.sql`.  
> **Do not commit real credentials anywhere in the codebase.**

---

## Contributing

1. Fork the repo
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m "Add your feature"`
4. Push and open a Pull Request

---

## License

MIT License — see [license.txt](license.txt) for details.
