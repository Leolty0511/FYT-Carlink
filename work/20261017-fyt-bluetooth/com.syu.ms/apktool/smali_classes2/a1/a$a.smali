.class public La1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La1/a;


# direct methods
.method public constructor <init>(La1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La1/a$a;->a:La1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/a$a;->a:La1/a;

    const-string v1, "/sdcard/steer_config.properties"

    invoke-static {v0, v1}, La1/a;->k(La1/a;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, La1/a$a;->a:La1/a;

    invoke-virtual {v0}, La1/a;->A()V

    return-void
.end method
