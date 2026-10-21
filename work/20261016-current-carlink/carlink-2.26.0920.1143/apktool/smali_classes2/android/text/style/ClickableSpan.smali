.class public abstract Landroid/text/style/ClickableSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# static fields
.field private static sIdCounter:I


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    sput v1, Landroid/text/style/ClickableSpan;->sIdCounter:I

    .line 9
    .line 10
    iput v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return v0
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
