# Sidia (Based On Reposi3)
A Sileo / Cydia repository template. This template contains samples on how you can easily make depiction pages without replicating your html pages. The pages are styled using [Bootsrap](http://getbootstrap.com/) which is really easy to use (for Cydia), and the Sileo pages are styled using JavaScript Object Notation.

This guide does NOT cover creating .deb files but will briefly cover assiging depictions.

#### CREDITS TO: @Supermamon, @EssentialisRepo, Saurik, and the Sileo Team

## How to use this template
If you are *not* hosting your repo on [Github Pages](https://pages.github.com/), you can download the zip file [here](https://github.com/sukarodo/Sidia/archive/master.zip) and extract to a subfolder on your website.

**Release File**

Edit `Release` file. Modify the items pointed by `<--`

    Origin: Sidia  <--
    Label: Sidia   <--
    Suite: stable
    Version: 1.0
    Codename: ios
    Architectures: iphoneos-arm
    Components: main
    Description: Sidia - a modern cydia / sileo apt repository template  <--

**Branding**

Open `index.html`
Change <title>Sidia</title> to whatever you wish.
Change lines 54 - 63 to whatever you wish.
Change line 71 into your own URL.
Note: YOU DO NOT NEED THIS. YOU CAN ALSO MAKE YOUR OWN. DO WHAT YOU WISH.

Add "CydiaIcon.png" for your Cydia / Sileo Repository Logo.


**Page Footers**

This data are the links that appear at the bottom of every **Cydia Depiction**. The data is stored in `repo.xml` at the root folder of your repo.

```xml
<repo>
    <footerlinks>
        <link>
            <name>Follow me on Twitter</name>
            <url>https://twitter.com/Sukarodo</url>
            <iconclass>glyphicon glyphicon-user</iconclass>
        </link>
        <link>
            <name>I want this depiction template</name>
            <url>https://github.com/sukarodo/sidia</url>
            <iconclass>glyphicon glyphicon-thumbs-up</iconclass>
        </link>
    </footerlinks>
</repo>
```


### Adding a simple depiction page (Cydia)

Go to the depictions folder and duplicate the folder `com.sukarodo.oldpackage`.
Rename the duplicate with the same name as your package name.
There are 2 files inside the folder - `info.xml` and `changelog.xml`.
Update the 2 files with information regading your package.
The tags are pretty much self-explanatory.
Contact [@sukarodo](https://twitter.com/sukarodo) for questions.

`info.xml`.
```xml
<package>
    <id>com.sukarodo.oldpackage</id>
    <name>Old Package</name>
    <version>1.0.0-1</version>
    <compatibility>
        <firmware>
            <miniOS>5.0</miniOS>
            <maxiOS>7.0</maxiOS>
            <otherVersions>unsupported</otherVersions>
            <!--
            for otherVersions, you can put either unsupported or unconfirmed
            -->
        </firmware>
    </compatibility>
    <dependencies></dependencies>
    <descriptionlist>
        <description>This is an old package. Requires iOS 7 and below..</description>
    </descriptionlist>
    <screenshots></screenshots>
    <changelog>
        <change>Initial release</change>
    </changelog>
    <links></links>
</package>
```

`changelog.xml`.
```xml
<changelog>
    <changes>
        <version>1.0.0-1</version>
        <change>Initial release</change>
    </changes>
</changelog>
```
### Adding a simple depiction page (Sileo)

Go to the assets folder and copy the file `sileodepictiontemplate.json`.
Rename the file to `depiction.json` and move into a folder labeled as your package name
Contact [@sukarodo](https://twitter.com/sukarodo) for questions.

Edit Lines 3, 9, 15, 29, 33, 48, 54, 68, 73, 78, 87, 92 (Make Your Own, I Don't Have This File),
 100, 111, 117, 122, and 127.

#### Link the depiction page in your tweak's `control` file

You can add the depictions url at the end of your package's `control` file before compiling it.
The depiction line should look like this:

```text
Depiction: https://username.github.io/repo/depictions/?p=[idhere]
```

Replace `[idhere]` with your actual package name.

```text
Depiction: https://username.github.io/repo/depictions/?p=com.sukarodo.oldpackage
```
For Sileo Depictions, add the SileoDepiction key in your `control` file before compiling it.

```text
SileoDepiction: https://username.github.io/repo/sileodepictions/?p=com.sukarodo.oldpackage.json
````

#### Rebuilding the `Packages` file

With your updated `control` file, build your tweak.
*REMOVE THE PACKAGES FILE WITHIN FIRST*
Store the resulting `.deb.` file into the `/debs/` folder of your repo.
Build your `Packages` file and compress with `bzip2`.

```
run update.sh on Mac. (Move update & clean.sh from /assets/ to /*)
Remove "update.sh" and "clean.sh" on Windows.
```

_Windows users, see [dpkg-scanpackages-py](https://github.com/supermamon/dpkg-scanpackages-py) or [scanpkg](https://github.com/mstg/scanpkg)._

#### Cydia / Sileo at last!

If you haven't done yet, go ahead and add your repo to Cydia / Sileo.
You should now be able to install your tweak into your own repo.

### Cleanup

Just a cleanup step, remove the debs that came with this template and re-run the commands on step 3. You can keep the sample depictions for reference but they're not needed for your repo.

## Sileo Extras

These are some extra things that can make your repository look even better on Sileo.

### Featured Packages (`sileo-featured.json`)

Change The Following Lines:
```
 "url": "https://raw.githubusercontent.com/sukarodo/sukarodo.github.io/master/assets/undecimus/Banners/RepoHeader.png", <---- The Package Banner
        "title": "Sample Package", <---- Your Package Name
        "package": "com.sukarodo.newpackage", <---- The Actual Package
```
