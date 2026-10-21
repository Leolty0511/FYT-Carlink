.class public Ln0/u$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/u$c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/u$c;


# direct methods
.method public constructor <init>(Ln0/u$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/u$c$a;->a:Ln0/u$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/u$c$a;->a:Ln0/u$c;

    iget-object v0, v0, Ln0/u$c;->a:Ln0/u;

    invoke-static {v0}, Ln0/u;->S3(Ln0/u;)V

    return-void
.end method
