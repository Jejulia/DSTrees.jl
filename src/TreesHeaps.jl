module TreesHeaps
using DataStructures, AbstractTrees, Reexport
import Base:pairs, insert!, delete!, fieldnames, getproperty, ==, findmin, findmax
import AbstractTrees: printnode, print_tree, PostOrderDFS, PreOrderDFS, TreeIterator

export 
    # Abstract types
    AbstractTree, AbstractNode, AbstractBinaryNode,

    # Nodes
    NullNode, SimpleBinaryNode, SBN, HeightBinaryNode, HBN, RedBlackBinaryNode, RBN,  
    
    # Trees
    BinarySearchTree, BST, AVLTree, AVL, SplayTree, Splay, RedBlackTree, RBT,

    # preoperty
    height, isnull, 
    # not imported: eltype, size and length

    # operations
    search, splay!, topdownsplay!, insert!, topdowninsert!,
    delete!, topdowndelete!, findmin, findmax, findrightmin, findleftmax, 

    # internal operations
    split!, topdownsplit!, join!, 

    # initialize plotting
    plot_init

@reexport using AbstractTrees

include("Nodetree.jl")    
include("Core.jl")
include("Balance.jl")
include("Interface.jl")

# Avoid importing Plots as default
plot_init() = include(joinpath(@__DIR__(), "Plot.jl"))

__init__() = precompile(plot_init,())

end # module
