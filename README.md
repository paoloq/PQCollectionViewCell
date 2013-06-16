PQCollectionViewCell
===============

PQCollectionViewCell is based on the logic behind [PQTableViewCell](https://github.com/paoloq/PQTableViewCell), applied on a UICollectionViewCell.

###How to use

Subclass PQCollectionViewCell, and use drawCellView: instead of drawRect: when you want to draw something on the cell.

I recommend to draw strings and images for a faster and smoother scrolling.

###Notes

PQCollectionViewCell removes all the original content but selectedBackgroundView. Bringing it on front we are able to use it for a selected or highlighted status.
