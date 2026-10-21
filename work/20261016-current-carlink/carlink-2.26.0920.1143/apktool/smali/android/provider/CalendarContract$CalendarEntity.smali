.class public final Landroid/provider/CalendarContract$CalendarEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.android.calendar/calendar_entities"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/CalendarContract$CalendarEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1

    new-instance v0, Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
