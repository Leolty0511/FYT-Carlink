.class Landroid/text/method/QwertyKeyListener$Replaced;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/QwertyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Replaced"
.end annotation


# instance fields
.field private mText:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C
    .locals 0

    iget-object p0, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    return-object p0
.end method
