.class public Lk0/lo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lo;


# direct methods
.method public constructor <init>(Lk0/lo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lo$a;->a:Lk0/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lo$a;->a:Lk0/lo;

    invoke-static {v0}, Lk0/lo;->a3(Lk0/lo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lo$a;->a:Lk0/lo;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/lo;->f:B

    return-void
.end method
