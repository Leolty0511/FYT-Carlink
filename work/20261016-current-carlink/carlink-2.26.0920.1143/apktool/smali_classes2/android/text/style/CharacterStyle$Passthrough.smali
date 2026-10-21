.class Landroid/text/style/CharacterStyle$Passthrough;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/CharacterStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Passthrough"
.end annotation


# instance fields
.field private mStyle:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 1

    iget-object v0, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v0}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, p1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
