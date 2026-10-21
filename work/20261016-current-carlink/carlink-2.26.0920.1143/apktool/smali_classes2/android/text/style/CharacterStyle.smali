.class public abstract Landroid/text/style/CharacterStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/CharacterStyle$Passthrough;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/text/style/MetricAffectingSpan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/style/MetricAffectingSpan$Passthrough;

    .line 6
    .line 7
    check-cast p0, Landroid/text/style/MetricAffectingSpan;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/text/style/MetricAffectingSpan$Passthrough;-><init>(Landroid/text/style/MetricAffectingSpan;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroid/text/style/CharacterStyle$Passthrough;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroid/text/style/CharacterStyle$Passthrough;-><init>(Landroid/text/style/CharacterStyle;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 0

    return-object p0
.end method

.method public abstract updateDrawState(Landroid/text/TextPaint;)V
.end method
