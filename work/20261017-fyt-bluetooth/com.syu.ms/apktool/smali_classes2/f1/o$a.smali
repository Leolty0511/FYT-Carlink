.class public Lf1/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lf1/q;

.field public b:I

.field public final synthetic c:Lf1/o;


# direct methods
.method public constructor <init>(Lf1/o;Lf1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/o$a;->c:Lf1/o;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lf1/o$a;->a:Lf1/q;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lf1/o$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lf1/q;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/o$a;->a:Lf1/q;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
