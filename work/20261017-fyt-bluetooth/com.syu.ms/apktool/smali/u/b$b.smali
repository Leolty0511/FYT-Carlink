.class public final Lu/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lu/b;


# direct methods
.method public constructor <init>(Lu/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/b$b;->a:Lu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/b$b;->a:Lu/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lu/b;->a(Lu/b;I)V

    return-void
.end method
