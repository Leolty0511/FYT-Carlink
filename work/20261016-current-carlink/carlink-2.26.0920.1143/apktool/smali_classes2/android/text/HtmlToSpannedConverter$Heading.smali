.class Landroid/text/HtmlToSpannedConverter$Heading;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Heading"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$1300(Landroid/text/HtmlToSpannedConverter$Heading;)I
    .locals 0

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    return p0
.end method
