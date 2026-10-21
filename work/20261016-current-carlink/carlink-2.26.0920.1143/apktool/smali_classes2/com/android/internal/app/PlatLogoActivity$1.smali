.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-double v0, v0

    .line 10
    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    .line 11
    .line 12
    mul-double v4, v0, v2

    .line 13
    .line 14
    double-to-int v4, v4

    .line 15
    int-to-double v5, p1

    .line 16
    mul-double/2addr v2, v5

    .line 17
    double-to-int p1, v2

    .line 18
    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    mul-double/2addr v0, v2

    .line 24
    double-to-int v0, v0

    .line 25
    mul-double/2addr v5, v2

    .line 26
    double-to-int v1, v5

    .line 27
    invoke-virtual {p2, v4, p1, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
