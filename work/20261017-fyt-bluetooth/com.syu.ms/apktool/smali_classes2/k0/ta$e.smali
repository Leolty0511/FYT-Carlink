.class public Lk0/ta$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ta;


# direct methods
.method public constructor <init>(Lk0/ta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ta$e;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ta$e;->a:Lk0/ta;

    invoke-static {v0}, Lk0/ta;->e3(Lk0/ta;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
