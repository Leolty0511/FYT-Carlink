.class Landroid/text/HtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public mColor:Ljava/lang/String;

.field public mFace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    return-void
.end method
