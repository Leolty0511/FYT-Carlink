.class public Ln0/a1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/a$f;


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
    iput-object p1, p0, Ln0/a1$k;->a:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ly0/g;->d:Lo1/y;

    iget-object v0, p0, Ln0/a1$k;->a:Ln0/a1;

    iget-object v0, v0, Ln0/a1;->B:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object p1, Ly0/g;->e:Lo1/y;

    iget-object v0, p0, Ln0/a1$k;->a:Ln0/a1;

    iget-object v0, v0, Ln0/a1;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method
