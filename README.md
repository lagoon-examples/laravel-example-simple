# Simple Laravel Example on Lagoon

This is a Simple Laravel Example that uses [Lagoon](https://lagoon.sh) (an open source application delivery framework by [amazee.io](https://amazee.io)).

It is intended as a base that can be adapted and made more advanced for your specific needs.

## Lagoon Integration

To see how this project was integrated with Lagoon, you can refer to the "Add sample Lagoon setup" commit.

The following files were added to provide Lagoon support:

- `.lagoon.yml`: The primary Lagoon configuration file, used for defining routes, pre-rollout/post-rollout tasks, and other environment-specific settings.
- `docker-compose.yml`: Used by Lagoon to understand the service architecture and build the necessary Docker images. It also provides a local development environment.
- `lagoon/cli.dockerfile`: Dockerfile for the CLI container, typically used for running migrations and artisan commands.
- `lagoon/nginx.dockerfile`: Dockerfile for the Nginx container, which serves the application.
- `lagoon/php.dockerfile`: Dockerfile for the PHP-FPM container, which handles the application logic.
- `lagoon/nginx/`: A directory containing optimized Nginx configuration files for Laravel (e.g., `app.conf`, `redirects.conf`).

## Contribution

Do you have any ideas on how to make this example better? Feel free to open an issue or submit a pull request.

