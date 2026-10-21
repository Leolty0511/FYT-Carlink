.class public Ln0/y2$r;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/y2;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$r;->e:Ln0/y2;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ln0/y2$r;->e:Ln0/y2;

    iget-object p1, p1, Ln0/y2;->A:Lui/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lui/b$a;->show()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
