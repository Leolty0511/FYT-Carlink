.class public final synthetic Landroid/telecom/Logging/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;


# instance fields
.field public final synthetic a:Landroid/telecom/Logging/SessionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Logging/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/c;->a:Landroid/telecom/Logging/SessionManager;

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Logging/c;->a:Landroid/telecom/Logging/SessionManager;

    invoke-static {v0}, Landroid/telecom/Logging/SessionManager;->b(Landroid/telecom/Logging/SessionManager;)J

    move-result-wide v0

    return-wide v0
.end method
