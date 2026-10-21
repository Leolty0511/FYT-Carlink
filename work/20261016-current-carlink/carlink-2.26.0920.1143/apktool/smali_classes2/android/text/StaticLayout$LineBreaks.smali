.class Landroid/text/StaticLayout$LineBreaks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineBreaks"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10


# instance fields
.field public breaks:[I

.field public flags:[I

.field public widths:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    .line 17
    .line 18
    return-void
.end method
