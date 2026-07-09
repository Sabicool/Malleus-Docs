# Installation

## Through AnkiWeb (recommended)

The add-on is on AnkiWeb: [ankiweb.net/shared/info/620451841](https://ankiweb.net/shared/info/620451841)

1. In Anki, click **Tools → Add-ons → Get Add-ons…**
2. Paste the code **620451841** and click OK
3. Restart Anki

## Manual installation

1. Download the add-on files from [GitHub](https://github.com/Sabicool/Malleus-Anki-Addon)
2. Place them in your Anki add-ons folder:

    === "Windows"
        ```
        %APPDATA%\Anki2\addons21\
        ```

    === "macOS"
        ```
        ~/Library/Application Support/Anki2/addons21/
        ```

    === "Linux"
        ```
        ~/.local/share/Anki2/addons21/
        ```

3. Restart Anki

## The database cache

The add-on keeps a local cache of the Malleus databases and refreshes it automatically — on startup it checks GitHub and only downloads a database if it has actually changed since last time (see [`cache_expiry`](configuration.md#cache_expiry)). You normally never need to update it by hand.

If need be, you can rebuild the cache directly from Notion yourself using the `update_notion_cache.py` script in the add-on folder (takes a little while):

```sh
python3 ./update_notion_cache.py
```
