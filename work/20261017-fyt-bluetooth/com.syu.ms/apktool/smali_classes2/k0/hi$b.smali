.class public Lk0/hi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hi;


# direct methods
.method public constructor <init>(Lk0/hi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hi$b;->a:Lk0/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hi$b;->a:Lk0/hi;

    invoke-static {v0}, Lk0/hi;->a3(Lk0/hi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hi$b;->a:Lk0/hi;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/hi;->j:B

    return-void
.end method
