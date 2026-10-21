.class Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;
.super Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method private constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V

    .line 3
    iput-boolean p2, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V

    return-void
.end method


# virtual methods
.method public defaultIsRtl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
