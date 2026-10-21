.class public Lk0/vk$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vk;


# direct methods
.method public constructor <init>(Lk0/vk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vk$b;->a:Lk0/vk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vk$b;->a:Lk0/vk;

    iget-object v0, v0, Lk0/vk;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/vk$b;->a:Lk0/vk;

    const/4 v1, 0x7

    iput v1, v0, Lk0/vk;->k:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/vk;->h:I

    .line 4
    iput v1, v0, Lk0/vk;->i:I

    return-void
.end method
