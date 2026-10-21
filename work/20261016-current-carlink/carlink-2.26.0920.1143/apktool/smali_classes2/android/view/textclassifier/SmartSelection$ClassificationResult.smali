.class final Landroid/view/textclassifier/SmartSelection$ClassificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SmartSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassificationResult"
.end annotation


# instance fields
.field final mCollection:Ljava/lang/String;

.field final mScore:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 7
    .line 8
    return-void
.end method
