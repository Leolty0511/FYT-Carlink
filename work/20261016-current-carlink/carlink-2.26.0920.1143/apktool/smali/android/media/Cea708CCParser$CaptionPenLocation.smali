.class public Landroid/media/Cea708CCParser$CaptionPenLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenLocation"
.end annotation


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionPenLocation;->row:I

    .line 5
    .line 6
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionPenLocation;->column:I

    .line 7
    .line 8
    return-void
.end method
