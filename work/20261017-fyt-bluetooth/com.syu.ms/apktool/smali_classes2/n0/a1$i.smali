.class public Ln0/a1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/Bar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$i;->a:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a1$i;->a:Ln0/a1;

    iget-object v0, v0, Ln0/a1;->z:Lui/a;

    invoke-virtual {v0}, Lui/a;->o()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-static {v0}, Ly0/h;->u0(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ly0/h;->u0(I)V

    return-void
.end method
