.class public Landroid/media/Cea708CCParser$CaptionPenColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenColor"
.end annotation


# instance fields
.field public final backgroundColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final edgeColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final foregroundColor:Landroid/media/Cea708CCParser$CaptionColor;


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->foregroundColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->backgroundColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->edgeColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 9
    .line 10
    return-void
.end method
