.class public final synthetic Landroid/telecom/Logging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/telecom/Logging/SessionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Logging/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/b;->b:Landroid/telecom/Logging/SessionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/b;->b:Landroid/telecom/Logging/SessionManager;

    invoke-static {v0}, Landroid/telecom/Logging/SessionManager;->a(Landroid/telecom/Logging/SessionManager;)V

    return-void
.end method
