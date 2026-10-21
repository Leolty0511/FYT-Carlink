.class Landroid/text/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Header;->mLevel:I

    return-void
.end method

.method public static synthetic access$900(Landroid/text/HtmlToSpannedConverter$Header;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Header;->mLevel:I

    return p0
.end method
