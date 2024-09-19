# PixivUtil2Wrapper

Some Windows command line scripts to make it easier to download favorited pages and view them with Irfanview.

## `dlFavPages.bat`

Calls PixivUtil2 with command line args to just download specific favorites pages.

It will intelligently use the latest install if there is more than one `./bin/pixivutil*` folder by using the folder names in sorted order and taking the last one.

### Setup

Directory layout looks like this for me:

* `MyPixivFolder`
   * `dlFavPages.bat`
   * `bin`
      * `pixivutil*` (This folder has the same name as the latest version. E.g. `pixivutil20220311-beta3` or `pixivutil20221029`)
         * The pixi util 2 install is in here.

### Usage

* `dlFavPages.bat 1` - Download the first page of your favorites.
* `dlFavPages.bat 7` - Download the first 7 pages of your favorites.
* `dlFavPages.bat 11 30` - Download pages 11 to 30 of your favorites.

## `slideshows.sh` and `slideshows-*.bat`

Runs multiple irfanview slideshows from command line in specific parts of the screen.

It's a pain and needs to be updated to automatically work. Currently you need to have separate `i_view32.ini` files for each slideshow position/size you want. These values need to be changed:

```ini
WindowX=0
WindowY=0
WindowW=1920
WindowH=1080
```

So currently there are 4 folders with their own barebones `i_view32.ini` that position a slideshow in eachof the 4 quadrants of a 4K monitor.
