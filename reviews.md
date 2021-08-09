# Reviews at NeurIPS'21

## 2021-08-04 Preliminary reviews

* Reviewer hWjk: Rating: 5 / Confidence: 3
* Reviewer MH5E: Rating: 4 / Confidence: 5
* Reviewer JM2z: Rating: 6 / Confidence: 1
* Reviewer 9mff: Rating: 4 / Confidence: 3

Average Rating: 4.75 (Min: 4, Max: 6)
Average Confidence: 3 (Min: 1, Max: 5)

## Official Review of Paper9906 by Reviewer 9mff
23 Jul 2021
Program Chairs, Paper9906 Senior Area Chairs, Paper9906 Area Chairs, Paper9906 Reviewers Submitted, Paper9906 Authors

Summary:

This paper proposes a learning method for graphs using equivariance for Lie groups on manifolds. Specifically, it is an equivariant graph Laplacian-based neural network based on Lie groups equipped with an anisotropic Riemannian metric. They have also provided some experiments for this approach.

Main Review:

There are a few things that I think are not good. The first one is what kind of functions this model is a universal approximator for. For example, in Maron's model, the universality of invariant continuous functions is known for the induced action of node permutation on adjacency matrices. Such a theoretical analysis is needed for this model. I also have a question about discrete approximations of the Lie group: as the dimension of the Lie group increases, this kind of approximation becomes very computationally expensive, as seen in Lie conv. Is it always possible to approximate the Lie group to the level of practical accuracy with this method? My last is about the experiment. In Table 1, there are only results for the proposed method and no comparison method. In this table, it is unclear whether the accuracy of the proposed method is higher than that of the previous methods or not.

Limitations And Societal Impact: No
Ethical Concerns: No
Needs Ethics Review: No
Time Spent Reviewing: 10hours
Rating: 4: Ok but not good enough - rejection
Confidence: 3: You are fairly confident in your assessment. It is possible that you did not understand some parts of the submission or that you are unfamiliar with some pieces of related work. Math/other details were not carefully checked.
Code Of Conduct: While performing my duties as a reviewer (including writing reviews and participating in discussions), I have and will continue to abide by the NeurIPS code of conduct.

------------------------------
\textbf{RESPONSE}
1. Analysis of universal approximator property -> Not sure how to respond here... Out of scope? Or can we say our method is equally well a universal approximator? (Since the mechanisms of spectral convolutions stay the same, it is just that the underlying graph is changed) This paper could be the source for our prove: http://proceedings.mlr.press/v119/ravanbakhsh20a/ravanbakhsh20a.pdf

2. Accuracy in context of discretization. The method is akin to other group equivariant methods and similarly suffers from dimensionality issues. In general denser, more compute heavy, discretizations reduce equivariance errors. However, our method is not tied to a specific input grid due to the graph NN approach, which increases flexiblity for dealing with computation costs, e.g. to work with random sparse grids or adjacency matrices.

3. Lack of comparison to other methods. -> Many different methods and architectures could have been chosen, however a fair comparison between methods would then depend on how much engineering effort went into each approach to get the most out of the dataset. This in turns complicates drawing reasonable conclusions from the experiments. Given that our approach could be used as a plugin replacement for classical graph NN building blocks, it made to us most sense to choose a baseline architecture using common graph NN layers (Chebyshev convolutions), and then use the exact same architecture but replacing the underlying graph with a lifted, anisotropic manifold graph. By doing so we could compare our proposed method fairly against a conventional baseline, whilst using the exact same amount of parameters and the same architecture. This allows to gain insight in the performance of the method.

------------------------------

## Official Review of Paper9906 by Reviewer JM2z
16 Jul 2021
Program Chairs, Paper9906 Senior Area Chairs, Paper9906 Area Chairs, Paper9906 Reviewers Submitted, Paper9906 Authors

Summary:

The authors introduce ChebLieNet as a group-equivariant method on manifolds that extends the original ChebNet. The extension is based on enforcing group equivariance via encoding anisotropic left-invariance Riemannian distance on the edges.

Main Review:

Quality: I checked most of the mathematical details from the paper. Except for a small typo on the left-invariance definition on line 190, all other details seem to be correct.

Clarity: The paper is in general very clear. The introduction and related work sections are written nicely, and the authors did a good job introducing the various components of their proposed network.

Originality and Significance: My research area is essentially disjoint from the area of the paper, and I do not have the expertise to comment on the originality or significance of the paper.

Limitations And Societal Impact: The authors addressed the limitations and potential negative societal impact in Section 5 of the paper.
Needs Ethics Review: No
Time Spent Reviewing: 6
Rating: 6: Marginally above the acceptance threshold
Confidence: 1: Your assessment is an educated guess. The submission is not in your area or the submission was difficult to understand. Math/other details were not carefully checked.
Code Of Conduct: While performing my duties as a reviewer (including writing reviews and participating in discussions), I have and will continue to abide by the NeurIPS code of conduct.


------------------------------
\textbf{RESPONSE}
1. Thank you for spotting the typo, this will be fixed!

------------------------------



## Official Review of Paper9906 by Reviewer MH5E
14 Jul 2021
Program Chairs, Paper9906 Senior Area Chairs, Paper9906 Area Chairs, Paper9906 Reviewers Submitted, Paper9906 Authors

Summary:

In the paper, a new graph neural network called ChebLieNet was proposed. The proposed network was designed to achieve equivariance properties with respect to actions of Lie groups. The proposed ChebLieNet was analyzed on vanilla datasets.

In summary, the proposed ChebLieNet was well motivated and structured. However, there are various major and minor problems with the paper including missing notation, definitions, incomplete and insufficient mathematical results and experimental analyses, especially in comparison with the state-of-the-art.

Main Review:

Comments and suggestions on major and minor issues with the paper:

1. There are various unclear statements in the paper. For instance, even the first sentence in the abstract “We introduce ChebLieNet, a group-equivariant method on (anisotropic) manifolds” is not clear. More precisely, is ChebLieNet a method, algorithm or a new neural network? What do you mean by “group-equivariant method”? The title should be also updated with a more clear description.

2. There are also various undefined terms and notation (I also checked supp. mat.). For instance, definitions of invariance/equivariant isotropic/anisotropic metric/manifold/layer/network/method are missing and these terms are used interchangeably without considering terminological and mathematical precision. Therefore, a reader needs to make educated guess on various terms, and the paper is not easily readable and most of the parts should be rewritten. Please also provide definition of the notation as it is used (e.g. for eqn. (1)).

3. Most of the claims proposed in the paper should be revised since they are not verified mathematically or experimentally. Note that, the mathematical statements given in the paper construct the formalism of the proposed method/network but not introduces mathematical/theoretical results supporting the strong claims. For instance, the following claims should be explored and analyzed more precisely:
a. With our method, geometric graph NNs are made equivariant to Lie groups: Needs mathematical and experimental verification. This property is not proved and detailed experimental analyses were not given.
b. We demonstrate the equivariance property of ChebLieNet, both in theory and in practice. This property guarantees that the neural network’s predictions are robust against given transformations, which is not necessarily the case with methods based on data augmentation: Needs mathematical and experimental verification: Needs mathematical and experimental verification. This property is not proved and detailed experimental analyses were not given. You need to provide results and analyses at least for different transformations and data augmentation methods in comparison with state-of-the-art methods.
c. We show that the use of directional information via anisotropic Riemannian spaces could benefit many tasks: Needs mathematical and experimental verification. This property is not proved and detailed experimental analyses were not given. You need to provide results and analyses at least for 4-5 different tasks.
d. We show the flexibility of the method by considering two different problems; we validate on classification problems with 2D image data and a segmentation problem on spherical data via the construction of a sub-Riemannian geometry on SE(2) and SO(3) respectively. Needs more detailed experimental verification. If you would like to address segmentation problem, please also consider the problem on image data.

4. Please explain more clearly how “the sub-Riemannian geometry forms the basis for the mathematical modeling of visual perception.”

5. The experimental analyses should be improved also by comparison of the proposed method with state-of-the-art invariant and equivariant methods and network models on different datasets including benchmark graph datasets.

Limitations And Societal Impact: Partially. Please check the above comments.
Needs Ethics Review: No
Time Spent Reviewing: 3
Rating: 4: Ok but not good enough - rejection
Confidence: 5: You are absolutely certain about your assessment. You are very familiar with the related work and checked the math/other details carefully.
Code Of Conduct: While performing my duties as a reviewer (including writing reviews and participating in discussions), I have and will continue to abide by the NeurIPS code of conduct.

------------------------------
\textbf{RESPONSE}
1. Categorisation of ChebLieNet as method?
We agree that the title and abstract are rather technical and requires additional explanation. For our revision we will put effort in effort in increasing the accessibility with additional explanations of technical terms. However, as we see an increase of papers on the topic of "equivariant deep learning" we believe the term equivariance is becoming common enough as to keep in the title and consider it appropriate. Nevertheless, we will put effort in making sure the paper is self-contained and accissible by clarifying all technical terms.

2. Thank your for bringing this to our attention, we see great value in addressing this readability issue and see how it improves the paper. We will make sure all technical terms are explained and double check for potential ambiguities. 

3. We agree that most of the effort of the paper goes through formalizing the method itself, followed by an emperical validation rather than a theoretical validation. Our objective is to present a new method to be used in practice, and in order to accurately describe it we need the math. While our initial objective was not an in depth theoretical analysis, but rather investigates its potential in applications, we see that one does not exclude the other. We thank you for pointing out properties of the method that can theoretically verified and decided to formalize and proof certain statements.
a. Equivariance of the method \textbf{is guaranteed by ...} We state this in the main text and prove it in the appendix. \textbf{See remark 4th reviewer: "This is true as the Laplacian is intrisic, hence invariant under isometries"}
b. We now provide theoretical proof of equivariance (see item a.) as well as experiments that confirm this in the appendix. 
c. anisotropic convolutions could benefit many tasks. We believe the criterion for showing the results for at least 4-5 is unreasonable, and stick to a motivation for why we think the statement holds. 
\textbf{Can we somehow proof this statement?} For G-CNNs one could argue that one has a hierarchy of degrees of freedom: plain NNs (no constraints) >  conv NN (contrained to be translation equivariant) > G-CNNs (constrained to be equivariant to larger groups) > conv NN with isotropic filters. It seems that isotropic spectral convolutions may be overly constained, but depending on the application it is the right inducitve bias.
d. We agree that more experiments would improve the paper, however, we do not believe the paper improves to the extend it out weights the added work. Namely, in many recent works on group equivariant deep learning it is shown already that group equivariant layers improve over the standard pure translation equivariant layers in both segmentation as well as classification task.\textbf{ The main focus of the experiments is to show ...}

4. We provided a high level discussion on this connection in the introduction, however, we can imagine that this does not provide a full explanaition but rather a motivation and directions for further reading. In section 3 when this notion is revisited in terms of sub-Riemannian geometry we provided references that underpin the statement of SR-geometry modeling visual perception. Going deeper than what is explained in the introduction is beyond the scope of this paper.

5. The purpose of this paper is not to engineer SOTA arechitectures but rather present a new method for building architectures, inspired by the visual system and inspired by the flexibility of graph neural networks. We therefore decide to limit the scope on the newly introduced method and its properties.

------------------------------


## Official Review of Paper9906 by Reviewer hWjk
12 Jul 2021
Program Chairs, Paper9906 Senior Area Chairs, Paper9906 Area Chairs, Paper9906 Reviewers Submitted, Paper9906 Authors

Summary:

Authors introduce graphs equivariant convolutional neural networks that are group-equivariant. They build on Defferrard et al. 2017, which introduced scalable convolutional neural networks on graphs, leveraging Chebyshev polynomials to bypass the need to compute the Fourier basis. In particular, they lift the (homogeneous) base space on which the data is defined to a Lie group (which acts on the base space) where they parametrize an anisotropic Riemannian metric. The edges weight are then computed using the geodesic distance induced that the metric, reflecting anisotropy.

Main Review:

Strengths
This work is relevant to the community as it contributes to building models that encode inductive biases in the form of group symmetry. The authors seem well versed in Riemannian geometry, group theory and spectral theory. Empirically, they show that incorporating both 'spatial' and 'orientation' anisotropy for CIFAR10 helps on generalization performance.

Weaknesses
The main weakness of this work perhaps is clarity. I expand on this below. Additionally, empirical evidence backing up the motivation of this work is somewhat limited. For instance, on Figure 4, the best test accuracy is still quite low, WideResNet reported an an accuracy of 96.11%. (I may be missing something). Similarly for STL10. I would argue to include a simple synthetic dataset with anisotropy baked in, and showing some of the learned filters so as to help the reader understand the method better.

Clarity
Generally the paper needs some improvement with regards to clarity. The method is grounded in a mathematical framework, which some readers may only be partially familiar with. As a consequence, particular care is required when introducing core ideas. For instance, it is somewhat stated that an anisotropic metric leads to the equivariance of the graph convolution layers whereas an isotropic metric leads to invariance. As this seems key I would suggest to expand and clarify this. As section 3 is where the method is formally introduced, it needs to convey efficiently the ideas that the method builds on. I believe that the paragraph on local frames and co could be moved to the appendix as it is not adding much. The paragraphs that follow are key as they introduce the parametrization of the Riemannian metric with the spatial and orientation anisotropies. I believe that a bit more work on these is necessary to give better intuition to the reader. Perhaps an illustration would help? Figure 1 is helping but still not filling the gap.

Correctness
This work claims that the proposed ChebLieNet is group-equivariant as graph Laplacians are equivariant operators. This is true as the Laplacian is intrisic, hence invariant under isometries. As this is a core claim of the paper, it would nonetheless be useful for the reader to have a bit more explanations and intuition. The convolution is in practice only approximately equivariant due to the Laplacian being asymptotically equivariant. How come this requires the kernel bandwidth to go to infinity? Wouldn't all the weights go to zero then?

Reproducibility
The code source has been provided in the supplementary material and after a quick inspection, it seems to allow to reproduce their results.

Additional feedback
* As the base space is lifted, how is the H dimension (grid) initialized for the data?
* 197: "which forms the basis for the mathematical modeling of visual perception." This sentence would need more context, or could be simply removed.
* 218: Can we really not analytically compute the distance the geodesic distance in SE(3)? Is it because of the particular choice of Riemannian metric R? Does the Lie group logarithm map depends on ε and ξ? The approximation from Equation 3 linearize the group around h (or symmetrically g) which sounds reasonable as the filter is localized. This may be highlighted.
* Figure 1: Perhaps adding a 4th subfigure "Base space M with an anisotropic Riemannian metric" would help?

Limitations And Societal Impact: Limitations are discussed.
Needs Ethics Review: No
Time Spent Reviewing: 4
Rating: 5: Marginally below the acceptance threshold
Confidence: 3: You are fairly confident in your assessment. It is possible that you did not understand some parts of the submission or that you are unfamiliar with some pieces of related work. Math/other details were not carefully checked.
Code Of Conduct: While performing my duties as a reviewer (including writing reviews and participating in discussions), I have and will continue to abide by the NeurIPS code of conduct.
