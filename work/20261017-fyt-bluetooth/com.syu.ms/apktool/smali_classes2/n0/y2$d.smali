.class public Ln0/y2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/Bar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/y2;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$d;->a:Ln0/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/y2$d;->a:Ln0/y2;

    iput-boolean p2, v0, Ln0/y2;->C:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lu0/d;->Q(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/y2$d;->a:Ln0/y2;

    iget-object v0, v0, Ln0/y2;->A:Lui/a;

    invoke-virtual {v0}, Lui/a;->o()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
