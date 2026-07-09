# Troubleshooting

## The page selector misbehaves during a cache update

There are known issues when using the add-on while the database cache is being updated. **Wait for the progress bar to finish** before using the page selector.

## Search results seem stale or a page is missing

- The cache refreshes automatically on startup once it's older than [`cache_expiry`](configuration.md#cache_expiry) days — restart Anki to trigger a check
- If a page is genuinely missing from a database's search (especially eTG), [contact us](https://discord.gg/4WqgJzjVyH) and we'll add it to the source database
- As a last resort you can [rebuild the cache from Notion directly](installation.md#the-database-cache)

## Cache downloads time out

On a slow connection, raise [`request_timeout`](configuration.md#request_timeout) in the config.

## Search feels laggy

- Increase [`search_delay`](configuration.md#search_delay), or set [`autosearch`](configuration.md#autosearch) to `false` and search with ++enter++
- If you've enabled [`show_card_counts`](configuration.md#show_card_counts), counting notes on large collections slows results — turn it off or lower [`card_count_threshold`](configuration.md#card_count_threshold)

## Cards are created in the wrong deck

Set [`deck_name`](configuration.md#deck_name) to the exact name of your Malleus deck (use `::` for subdecks).

## Still stuck?

- Ask in [Discord](https://discord.gg/4WqgJzjVyH)
- [Open an issue on GitHub](https://github.com/Sabicool/Malleus-Anki-Addon/issues) — there are templates for bug reports and feature requests
