.class public Landroid/media/Cea708CCParser$CaptionWindowAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindowAttr"
.end annotation


# instance fields
.field public final borderColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordWrap:Z


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->fillColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 7
    .line 8
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderType:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->wordWrap:Z

    .line 11
    .line 12
    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->printDirection:I

    .line 13
    .line 14
    iput p6, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->scrollDirection:I

    .line 15
    .line 16
    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->justify:I

    .line 17
    .line 18
    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectDirection:I

    .line 19
    .line 20
    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectSpeed:I

    .line 21
    .line 22
    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->displayEffect:I

    .line 23
    .line 24
    return-void
.end method
