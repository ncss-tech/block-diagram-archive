# block-diagram-archive
A place to store, index, and crowd-source annotation for NCSS block diagrams.

[Current NCSS block diagram archive (3506 images).](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/home/?cid=nrcs142p2_054322).

There are 5958 soil survey areas, each one of these is likely to have *at least* 1-3 diagrams, so there should be approximately 2,500 to 14,000 diagrams waiting to be archived.

Internet Archive landing page for historic Soil Survey Manuscripts:
https://archive.org/details/usda-soil-surveys?sort=-date


# Resources
  * https://archive.org/details/usda-soil-surveys
  * https://casoilresource.lawr.ucdavis.edu/sde/?series=cecil#block-diagrams
  * [Soil Survey Manual Chapter 4](https://www.nrcs.usda.gov/sites/default/files/2022-09/The-Soil-Survey-Manual.pdf)
  * [The Art and Science of Soil-Landscape Block Diagrams: Examples of One Picture Being Worth More Than 1000 Words](https://acsess.onlinelibrary.wiley.com/doi/abs/10.2136/sh2011.3.0089)
  * [Block Diagrams and Soil Profile Characteristics in Soil Genesis and Classification Courses](https://www.crops.org/files/publications/jnrlse/pdfs/jnr020/020-02-0086.pdf)
  * Block diagrams for soil survey interpretations. compiled by Robert W. Eikleberry




# Tasks

## Finish scanning historic block diagrams from paper surveys

## Collection new block diagrams from recent (digital-only) surveys

## Collection of NCSS cooperator works

## Indexing

These block diagrams convey a tremendous wealth of knowledge, but outside of the context of the paper manuscript they aren't easily found and lose important connections to narrative. It is possible to "estimate" the proportion of geomorphic parameters associated with a given soil series (e.g. hillslope position or geomorphic component) using SSURGO:

```
| series | Toeslope | Footslope | Backslope | Shoulder | Summit |
+-------+----------+-----------+-----------+----------+--------+
| AVA    |        0 |         0 |    0.1430 |   0.4355 | 0.4215 |
```

... however, these kind of data should be informed by (or at least cross-referenced with) similar summaries derived from block diagrams. This would require collection of a couple extra "metadata" on each block diagram (scanned and not yet scanned): parent material, 2D slope shape, 3D slope shape, etc.. I'll work out some examples of how this might be done. We are going to need a lot of help, but I think that the end result will be very useful.


By file:
  * parent material
  * soil series name
  * 2D and 3D surface shape
  * ???

