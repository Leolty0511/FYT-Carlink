.class public Lk0/oo$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oo;


# direct methods
.method public constructor <init>(Lk0/oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oo$i;->a:Lk0/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oo$i;->a:Lk0/oo;

    iget-object v0, v0, Lk0/oo;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/16 v1, 0xaf

    .line 2
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v0, p0, Lk0/oo$i;->a:Lk0/oo;

    const/4 v1, 0x5

    iput v1, v0, Lk0/oo;->w:I

    return-void
.end method
