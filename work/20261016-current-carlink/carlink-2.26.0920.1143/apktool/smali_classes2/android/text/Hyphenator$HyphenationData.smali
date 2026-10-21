.class Landroid/text/Hyphenator$HyphenationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Hyphenator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HyphenationData"
.end annotation


# instance fields
.field final mLanguageTag:Ljava/lang/String;

.field final mMinPrefix:I

.field final mMinSuffix:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/text/Hyphenator$HyphenationData;->mMinPrefix:I

    .line 7
    .line 8
    iput p3, p0, Landroid/text/Hyphenator$HyphenationData;->mMinSuffix:I

    .line 9
    .line 10
    return-void
.end method
