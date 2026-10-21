.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 5
    .line 6
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return p1
.end method

.method public getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return p1
.end method

.method public setDefaultDragDirs(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return-void
.end method
