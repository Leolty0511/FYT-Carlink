.class Landroid/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependency"
.end annotation


# static fields
.field public static final AFTER:I = 0x1

.field public static final WITH:I


# instance fields
.field public node:Landroid/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    .line 3
    iput p2, p0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method
