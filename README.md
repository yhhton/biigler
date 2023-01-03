# biigler

> `biigler` is an unofficial R package developed by [Underwater Image Identification Working Group in ODB, IONTU](https://www.odb.ntu.edu.tw/bio/) mainly for substituting the repetitive operations on the [BIIGLE 2.0](https://biigle.de/) graphical user interface. 

## Features
* Work with BIIGLE API in R
  * Get images of volume, get label tree, and so on. Check out all relevant functions with `?getBIIGLE`.
  * Massive post/delete label or annotation in volume. Check out all relevant functions with `?volPostNDelete`.
  * Generate BIIGLE label/annotation csv-type report and download it. See function manual by `?reqNgetRep`.
* Labeling assistant
    
  A set of functions for posting specific labels on targeting images. Check out details with `?labelingAssistant`.
* Summary of label/annotation records in volume
  * Visualize label/annotation csv-type reports as a bar chart. Check out details with `?ana_sumVol`.
  * This package contain 2 example dataset allowing user to test function `ana_sumVol`:
      * "annotation" csv-type report `ex_annotation`
      * "label" csv-type report `ex_label`

## API token
Most of functions in this package work with [BIIGLE RESTful API](https://biigle.de/doc/api/index.html#api-_), which need to provide user's authentication information, including account (sign-up email) and API token. Hence, please generate an API token and use function `genAuth` to create the authentication string (see details with `?genAuth`) before using these functions.
* Generate your API token on BIIGLE 2.0： BIIGLE 2.0 > Settings > Tokens > Generate
```r
# Create the authentication string before your work
yourAuthString <- genAuth(account = "yourBiigleAccount@email.com", apiToken = "yourApiToken")

# Use the authentication string wherever the function requires it (parameter `auth`).
getVolID(url = "https://seaimage.oc.ntu.edu.tw", 
         auth = yourAuthString, 
         volName = "TTC17")
getVolImg(url = "https://seaimage.oc.ntu.edu.tw", 
          auth = yourAuthString,
          vol = 5)
```
Note that, the permission of requesting operation depends on the user's role in the BIIGLE project. For example, an `Editor` user can only use the function `delAllLabs` to delete labels created by itself, and labels created by other users will return as failed records. On the other hand, an `Admin` user can clean all labels with `delAllLabs` whatever it wants.

## Dependencies
We developed this package based on:
* BIIGLE 2.0 v3.14.2
* R v4.1.2
* Other dependencies please check on `DESCRIPTION` file

***

### About Underwater Image Identification Working Group in ODB, IONTU
We built our [BIIGLE 2.0 server](https://seaimage.oc.ntu.edu.tw/) by [BIIGLE source code](https://github.com/biigle) and analyze deep-see image in southwest of Taiwan ([more information](https://www.odb.ntu.edu.tw/bio/en/about_us/)).
