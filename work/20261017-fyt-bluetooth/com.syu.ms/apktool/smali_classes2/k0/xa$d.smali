.class public Lk0/xa$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xa;


# direct methods
.method public constructor <init>(Lk0/xa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xa$d;->a:Lk0/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xa$d;->a:Lk0/xa;

    const/4 v1, 0x0

    iput v1, v0, Lk0/xa;->E:I

    .line 2
    iput v1, v0, Lk0/xa;->D:I

    .line 3
    invoke-static {v0}, Lk0/xa;->j3(Lk0/xa;)V

    return-void
.end method
