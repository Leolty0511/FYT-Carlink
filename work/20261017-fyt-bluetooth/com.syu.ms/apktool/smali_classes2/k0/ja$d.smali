.class public Lk0/ja$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ja;


# direct methods
.method public constructor <init>(Lk0/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ja$d;->a:Lk0/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ja$d;->a:Lk0/ja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/ja;->o3(Lk0/ja;I)V

    return-void
.end method
