.class abstract Landroid/animation/PathKeyframes$FloatKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FloatKeyframesBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes$1;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
