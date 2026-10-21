.class public Lk0/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o;


# direct methods
.method public constructor <init>(Lk0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o$b;->a:Lk0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/o$b;->a:Lk0/o;

    invoke-static {v0}, Lk0/o;->a3(Lk0/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/o$b;->a:Lk0/o;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/o;->g:B

    return-void
.end method
