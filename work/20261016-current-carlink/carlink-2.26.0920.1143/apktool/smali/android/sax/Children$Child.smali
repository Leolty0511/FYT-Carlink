.class Landroid/sax/Children$Child;
.super Landroid/sax/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/Children;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Child"
.end annotation


# instance fields
.field final hash:I

.field next:Landroid/sax/Children$Child;


# direct methods
.method public constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/sax/Element;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Landroid/sax/Children$Child;->hash:I

    .line 5
    .line 6
    return-void
.end method
