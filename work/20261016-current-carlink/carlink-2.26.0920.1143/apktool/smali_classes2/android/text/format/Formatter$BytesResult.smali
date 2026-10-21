.class public Landroid/text/format/Formatter$BytesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    .line 9
    .line 10
    return-void
.end method
