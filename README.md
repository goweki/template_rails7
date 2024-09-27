# Rails 7 Template App

This README documents the steps necessary to get the application up and running.

## Ruby Version

- Ruby version: `3.x.x` (specify the exact version you are using)

## System Dependencies

- PostgreSQL
- Node.js (for JavaScript runtime)
- Yarn (for managing JavaScript packages)
- Bundler (for managing Ruby gems)

## Configuration

1. **Install dependencies**:

   ```bash
   bundle install
   yarn install
   ```

2. **Environment Variables**: Create a `.env` file in the root of your project to store environment-specific variables. Use `.env.template` as a reference.

   Example `.env` file:

   ```plaintext
   RAILS7_TEMPLATE_USER_PASSWORD=your_user_password
   ```

## Database

### Database Creation

To create the database, run:

```bash
bin/rails db:create
```

> [!WARNING]  
> This will work only if the user defined in the `config/database.yml` file has permissions to create databases. If not manually create the databases for `development`,`test` and `production` envvironments, as defined in `config/database.yml`

### Database Initialization

To run any pending migrations, use:

```bash
bin/rails db:migrate
```

You can also seed the database with initial data (if you have a seeds file):

```bash
bin/rails db:seed
```

## How to Run the Test Suite

To run the test suite, execute:

```bash
bin/rails test
```

## Services

- **Background Jobs**: If you are using Active Job with a queuing backend, configure it in the application.rb file.
- **Caching**: The application uses Rails caching features. You can configure caching in the config/environments/\*.rb files.
- **Search**: If using a search engine, make sure to configure it in the initializer files.

## Deployment Instructions

To deploy the application:

1. Ensure your environment variables are set up correctly on the server.
2. Push your code to the production branch.
3. Run the following commands on the server:

   ```bash
   bundle install
   rails db:migrate RAILS_ENV=production
   rails assets:precompile RAILS_ENV=production
   ```

4. Restart your application server (e.g., Puma, Unicorn).

## Tailwind CSS
This application is styled using Tailwind CSS. To customize your styles:

1. Modify app/assets/stylesheets/application.tailwind.css.
2. Add or update classes in your views to utilize Tailwind's utility-first approach.
3. For more details on using Tailwind CSS, refer to the [official Tailwind CSS documentation](https://tailwindcss.com/docs/guides/ruby-on-rails).

## Contributing
1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes and commit them (git commit -m 'Add some feature').
4. Push to the branch (git push origin feature-branch).
5. Create a new Pull Request.

## License
This project is licensed under the MIT License. See the [LICENSE description](https://opensource.org/license/mit) for details.