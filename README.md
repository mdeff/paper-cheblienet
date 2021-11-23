# ChebLieNet: Invariant spectral graph NNs turned equivariant by Riemannian geometry on Lie groups

[Hugo Aguettaz](https://www.linkedin.com/in/hugo-aguettaz),
[Erik J. Bekkers](https://erikbekkers.bitbucket.io),
[Michaël Defferrard](https://deff.ch)

> We introduce ChebLieNet, a group-equivariant method on (anisotropic) manifolds.
> Surfing on the success of graph- and group-based neural networks, we take advantage of the recent developments in the geometric deep learning field to derive a new approach to exploit any anisotropies in data.
> Via discrete approximations of Lie groups, we develop a graph neural network made of anisotropic convolutional layers (Chebyshev convolutions), spatial pooling and unpooling layers, and global pooling layers.
> Group equivariance is achieved via equivariant and invariant operators on graphs with anisotropic left-invariant Riemannian distance-based affinities encoded on the edges.
> Thanks to its simple form, the Riemannian metric can model any anisotropies, both in the spatial and orientation domains.
> This control on anisotropies of the Riemannian metrics allows to balance equivariance (anisotropic metric) against invariance (isotropic metric) of the graph convolution layers.
> Hence we open the doors to a better understanding of anisotropic properties.
> Furthermore, we empirically prove the existence of (data-dependent) sweet spots for anisotropic parameters on CIFAR10.
> This crucial result is evidence of the benefice we could get by exploiting anisotropic properties in data.
> We also evaluate the scalability of this approach on STL10 (image data) and ClimateNet (spherical data), showing its remarkable adaptability to diverse tasks.

```
@inproceedings{cheblienet,
  title = {{ChebLieNet}: Invariant spectral graph {NN}s turned equivariant by Riemannian geometry on Lie groups},
  author = {Aguettaz, Hugo and Bekkers, Erik J and Defferrard, Michaël},
  year = {2021},
  url = {https://openreview.net/forum?id=WsfXFxqZXRO},
}
```

## Resources

PDF available at [`arXiv:2111.xxxxx`][arXiv], [`OpenReview:WsfXFxqZXRO`][OpenReview].

Related: [code].

[arXiv]: https://arxiv.org/abs/2111.xxxxx
[OpenReview]: https://openreview.net/forum?id=WsfXFxqZXRO
[code]: https://github.com/haguettaz/ChebLieNet

## Compilation

Compile the latex source into a PDF with `make`.
Run `make clean` to remove temporary files and `make arxiv.zip` to prepare an archive to be uploaded on arXiv.

## Figures

All the figures are in the [`Images`](Images/) folder.
The code and data to reproduce them is found in the [code repository][code].

## Peer-review

The reviews, decision, and our answers are in [`reviews.md`](reviews.md) and on [OpenReview].

## History

* 2021-11-23: uploaded on arXiv (git tag `arxiv`)
* 2021-08-11: rebuttal to NeurIPS'21 reviews (git tag `neurips21-rebuttal`)
* 2021-06-04: submitted to NeurIPS'21 (git tag `neurips21-submitted`)

## License

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
