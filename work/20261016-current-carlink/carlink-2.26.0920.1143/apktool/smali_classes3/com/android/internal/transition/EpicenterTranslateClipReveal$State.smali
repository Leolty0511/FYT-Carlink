.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field lower:I

.field trans:F

.field upper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 3
    iput p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    .line 4
    iput p3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    return-void
.end method
