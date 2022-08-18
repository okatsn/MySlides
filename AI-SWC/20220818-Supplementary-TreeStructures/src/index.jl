#hide-below
#
# - Unhide this section to make enable a background image for every pages.
# - Noted that if `layout` is set to be true, `background-image:` is void therein after; set `layout: false` again to allow `background-image:` therein after.
#
# background-image: url(assets/img/bg_watercolorblue.jpg)
# layout: true
#
# # Generate slide:
# myslideshow(presentationdir(); title= "Tree structure 2022-08-18",options = Dict("ratio" => "16:9"))



using Remark, Literate, Markdown #hide
using DataFrameTools, FileTools, Shorthands #hide
using Revise #hide
using SWCForecast #hide
presentationdir(args...) = joinpath("/home/jovyan/swc-forecast-insider/temp_ppt", args...); #hide

imgdir(args...) = presentationdir("src","assets", "img", args...); #hide
## for finding images from the working directory where you are coding

#hide-above

# ---
# class: center, middle
#
# # Structures of Trees
#
# - subset #1
# - subset #6
# - subset #12
#
# ---
#
# ## Subset #1
#
# ![](assets/img/subset_1.png)


MMD = emptyMD();#hide
push!(MMD.content, Markdown.HorizontalRule());#hide

flist = filelist(r".*\.png", imgdir("trees_subset_1"))#hide
lenf = length(flist)#hide
for (i,abspath) in enumerate(flist[1:10])#hide
    rpath = refbuildpath(abspath)#hide
    push!(MMD.content, Markdown.Header{1}(["(subset #1) Tree $i/$lenf"]));#hide
    push!(MMD.content, Markdown.Paragraph(Any[Markdown.Image(rpath, "")]));#hide
    push!(MMD.content, Markdown.HorizontalRule()); # i.e., md"---"#hide
end#hide

MMD


#
# ## Subset #6
#
# ![](assets/img/subset_6.png)


MMD = emptyMD();#hide
push!(MMD.content, Markdown.HorizontalRule());#hide

flist = filelist(r".*\.png", imgdir("trees_subset_6"))#hide
lenf = length(flist)#hide
for (i,abspath) in enumerate(flist[1:10])#hide
    rpath = refbuildpath(abspath)#hide
    push!(MMD.content, Markdown.Header{1}(["(subset #6) Tree $i/$lenf"]));#hide
    push!(MMD.content, Markdown.Paragraph(Any[Markdown.Image(rpath, "")]));#hide
    push!(MMD.content, Markdown.HorizontalRule()); # i.e., md"---"#hide
end#hide

MMD




#
# ## Subset #12
#
# ![](assets/img/subset_12.png)


MMD = emptyMD();#hide
push!(MMD.content, Markdown.HorizontalRule());#hide

flist = filelist(r".*\.png", imgdir("trees_subset_12"))#hide
lenf = length(flist)#hide
for (i,abspath) in enumerate(flist[1:10])#hide
    rpath = refbuildpath(abspath)#hide
    push!(MMD.content, Markdown.Header{1}(["(subset #12) Tree $i/$lenf"]));#hide
    push!(MMD.content, Markdown.Paragraph(Any[Markdown.Image(rpath, "")]));#hide
    push!(MMD.content, Markdown.HorizontalRule()); # i.e., md"---"#hide
end#hide

MMD
