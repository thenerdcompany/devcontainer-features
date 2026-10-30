## Coder app

When used in a [Coder](https://coder.com) workspace, this feature registers a `code-server` app that is served on its own subdomain (`"subdomain": true`). This requires a [wildcard access URL](https://coder.com/docs/admin/networking/wildcard-access-url) to be configured on the Coder deployment.

Coder only accepts a boolean for `subdomain`, so it cannot be set through a feature option. If your deployment has no wildcard access URL, override the app in your `devcontainer.json` using the same slug to fall back to path-based access:

```json
"customizations": {
    "coder": {
        "apps": [
            {
                "slug": "code-server",
                "displayName": "code-server",
                "url": "http://127.0.0.1:8080/",
                "icon": "/icon/code.svg",
                "group": "Web Editors",
                "subdomain": false
            }
        ]
    }
}
```
