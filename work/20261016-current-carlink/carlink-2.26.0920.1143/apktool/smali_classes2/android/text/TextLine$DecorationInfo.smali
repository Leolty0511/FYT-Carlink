.class final Landroid/text/TextLine$DecorationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecorationInfo"
.end annotation


# instance fields
.field public end:I

.field public isStrikeThruText:Z

.field public isUnderlineText:Z

.field public start:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 3
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->end:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/TextLine$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInfo()Landroid/text/TextLine$DecorationInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 11
    .line 12
    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 13
    .line 14
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 15
    .line 16
    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 17
    .line 18
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 19
    .line 20
    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 21
    .line 22
    return-object v0
.end method

.method public hasDecoration()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
