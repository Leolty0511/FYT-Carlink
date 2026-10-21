.class public Lk0/k0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/k0;


# direct methods
.method public constructor <init>(Lk0/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/k0$d;->a:Lk0/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/k0$d;->a:Lk0/k0;

    invoke-static {v0}, Lk0/k0;->n3(Lk0/k0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/16 v1, 0x93

    .line 2
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v0, p0, Lk0/k0$d;->a:Lk0/k0;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/k0;->n:B

    return-void
.end method
