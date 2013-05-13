package test.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.SessionAware;

import test.bean.Mail;
import test.bussiness.MailDao;

import com.opensymphony.xwork2.ActionSupport;

public class BoxGrid extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = -6432433682782963578L;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
    private static final Log log = LogFactory.getLog(BoxGrid.class);

    // Your result List
    private List<Mail> gridModel;

    // get how many rows we want to have into the grid - rowNum attribute in the
    // grid
    private Integer rows = 0;

    // Get the requested page. By default grid sets this to 1.
    private Integer page = 0;

    // sorting order - asc or desc
    private String sord;

    // get index row - i.e. user click to sort.
    private String sidx;

    // Search Field
    private String searchField;

    // The Search String
    private String searchString;

    // Limit the result when using local data, value form attribute rowTotal
    private Integer totalrows;

    // he Search Operation
    // ['eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc']
    private String searchOper;

    // Your Total Pages
    private Integer total = 0;

    // All Records
    private Integer records = 0;

    private boolean loadonce = false;
    private Map<String, Object> session;
    private List<Mail> mails;

    @SuppressWarnings("unchecked")
    public String execute() {
	log.info("Page " + getPage() + " Rows " + getRows() + " Sorting Order " + getSord() + " Index Row :" + getSidx());
	log.info("Search :" + searchField + " " + searchOper + " " + searchString);

	Object list = session.get("mylist");
	if (list != null) {
	    mails = (List<Mail>) list;
	} else {
	    log.debug("Build new List");
	    mails = MailDao.buildList();
	}

	if (sord != null && sord.equalsIgnoreCase("asc")) {
	    Collections.sort(mails);
	}
	if (sord != null && sord.equalsIgnoreCase("desc")) {
	    Collections.sort(mails);
	    Collections.reverse(mails);
	}

	// Count all record (select count(*) from your_custumers)
	records = MailDao.getMailsCount(mails);

	if (totalrows != null) {
	    records = totalrows;
	}

	// Calucalate until rows ware selected
	int to = (rows * page);

	// Calculate the first row to read
	int from = to - rows;

	// Set to = max rows
	if (to > records)
	    to = records;

	if (totalrows != null && totalrows > 0) {
		setGridModel(mails.subList(0, totalrows));
	} else {
		// All Custumer
		setGridModel(mails);
	}
	

	    // Search Custumers
	    /*if (searchString != null && searchOper != null) {
		int id = Integer.parseInt(searchString);
		if (searchOper.equalsIgnoreCase("eq")) {
		    log.debug("search id equals " + id);
		    List<Mail> cList = new ArrayList<Mail>();
		    Mail Mail = MailDao.findById(mails, id);

		    if (Mail != null)
			cList.add(Mail);

		    setGridModel(cList);
		} else if (searchOper.equalsIgnoreCase("ne")) {
		    log.debug("search id not " + id);
		    setGridModel(MailDao.findNotById(mails, id, from, to));
		} else if (searchOper.equalsIgnoreCase("lt")) {
		    log.debug("search id lesser then " + id);
		    setGridModel(MailDao.findLesserAsId(mails, id, from, to));
		} else if (searchOper.equalsIgnoreCase("gt")) {
		    log.debug("search id greater then " + id);
		    setGridModel(MailDao.findGreaterAsId(mails, id, from, to));
		}
	    } else {
		setGridModel(MailDao.getMails(mails, from, to));
	    }*/

	// Calculate total Pages
	total = (int) Math.ceil((double) records / (double) rows);

	// only for showcase functionality, don't do this in production
	session.put("mylist", mails);

	return SUCCESS;
    }

    public String getJSON() {
	return execute();
    }

    /**
     * @return how many rows we want to have into the grid
     */
    public Integer getRows() {
	return rows;
    }

    /**
     * @param rows
     *            how many rows we want to have into the grid
     */
    public void setRows(Integer rows) {
	this.rows = rows;
    }

    /**
     * @return current page of the query
     */
    public Integer getPage() {
	return page;
    }

    /**
     * @param page
     *            current page of the query
     */
    public void setPage(Integer page) {
	this.page = page;
    }

    /**
     * @return total pages for the query
     */
    public Integer getTotal() {
	return total;
    }

    /**
     * @param total
     *            total pages for the query
     */
    public void setTotal(Integer total) {
	this.total = total;
    }

    /**
     * @return total number of records for the query. e.g. select count(*) from
     *         table
     */
    public Integer getRecords() {
	return records;
    }

    /**
     * @param record
     *            total number of records for the query. e.g. select count(*)
     *            from table
     */
    public void setRecords(Integer records) {

	this.records = records;

	if (this.records > 0 && this.rows > 0) {
	    this.total = (int) Math.ceil((double) this.records
		    / (double) this.rows);
	} else {
	    this.total = 0;
	}
    }

    /**
     * @return an collection that contains the actual data
     */
    public List<Mail> getGridModel() {
	return gridModel;
    }

    /**
     * @param gridModel
     *            an collection that contains the actual data
     */
    public void setGridModel(List<Mail> gridModel) {
	this.gridModel = gridModel;
    }

    /**
     * @return sorting order
     */
    public String getSord() {
	return sord;
    }

    /**
     * @param sord
     *            sorting order
     */
    public void setSord(String sord) {
	this.sord = sord;
    }

    /**
     * @return get index row - i.e. user click to sort.
     */
    public String getSidx() {
	return sidx;
    }

    /**
     * @param sidx get index row - i.e. user click to sort.
     */
    public void setSidx(String sidx) {
	this.sidx = sidx;
    }

    public void setSearchField(String searchField) {
	this.searchField = searchField;
    }

    public void setSearchString(String searchString) {
	this.searchString = searchString;
    }

    public void setSearchOper(String searchOper) {
	this.searchOper = searchOper;
    }

    public void setLoadonce(boolean loadonce) {
	this.loadonce = loadonce;
    }

    public void setTotalrows(Integer totalrows) {
	this.totalrows = totalrows;
    }	
}
